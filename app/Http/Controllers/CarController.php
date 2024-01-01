<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Car ;
use App\Traits\Common;


class CarController extends Controller
{

    use Common;

    // private $columns = ['title', 'description', 'published'];
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $cars = Car::get();
        return view('cars',compact('cars'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('addCar');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // if ($request) {
        //     return dd($request->request);
        // }else {
        //     return "No request" ;
        // }
        
        // $cars = new Car();
        // $cars->title = $request->title;
        // $cars->description = $request->description;
        // if (isset($request->published)) {
        //     $cars->published = 1;
        // }else {
        //     $cars->published = 0;
        // }
        
        // $cars->save();

        // $data = $request->only($this->columns);
        $messages = $this->messages();
        $data = $request->validate([
            'title' => 'required|string|max:50',
            'description' => 'required|string',
            'image'=> 'required|mimes:png,jpg,jpeg|max:2048',


        ],$messages);

        $fileName = $this->uploadFile($request->image, 'assets/images');

        $data['published'] = isset($request->published);
        $data['image'] = $fileName ;
        // return "data  added successfully";
        Car::Create($data);
        return redirect('cars');


    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $car = Car::findOrFail($id);
        return view('showCar',compact('car'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $car = Car::findOrFail($id);
        return view('updateCar',compact('car'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // $data = $request->only($this->columns);
        
        $data = $request->validate([
            'title' => 'required|string|max:50',
            'description' => 'required|string',

        ]);
        $data['published'] = isset($request->published);
        if ($request->hasFile('image')) {
            $this->validate($request, [
                'image' => 'required|mimes:png,jpg,jpeg|max:2048',
            ]);
    
            $fileName = $this->uploadFile($request->file('image'), 'assets/images');
            $data['image'] = $fileName;
        }
        
        Car::where('id',$id)->update($data);
        // return redirect('cars');
        $car = Car::findOrFail($id);
         return redirect('cars');
        // return view('updateCar', compact('car'));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Car::where('id',$id)->delete();
        return redirect('cars');
    }

    /**
     * Trashed List.
     */
    public function trashed()
    {
        $cars = Car::onlyTrashed()->get();
        return view('trashed', compact('cars'));
    }

    /**
     * Forced delete car from trashed list.
     */
    public function forceDelete(string $id)
    {
        Car::where('id',$id)->forceDelete();
        return redirect('cars');
    }

    /**
     * Restore car from trashed list.
     */
    public function restore(string $id)
    {
        Car::where('id',$id)->restore();
        return redirect('cars');
    }

    public function messages()
    {
      return [
        'title.required' => 'العنوان مطلوب',
        'title.string' => 'title should be string',
        'description.required' => 'الوصف مطلوب',
        'image.required' => 'please sure to upload an mage',
        'image.mimes' => 'incorrect image type',
        'image.max' => 'Max file size exceeded',

      ];
    }
}
