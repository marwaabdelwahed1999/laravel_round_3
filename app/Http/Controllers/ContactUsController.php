<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactUsMail;
use Swift_TransportException;


use Illuminate\Http\Request;

class ContactUsController extends Controller
{
    public function sendEmail(Request $request)
    {
       
        $data = $request->validate([
            'name' => 'required|string',
            'email' => 'required|email',
            'phone' => 'required|string',
            'subject' => 'required|string',
            'message' => 'required|string',
        ]);

        try {

            Mail::to('marwa@example.com')->send(new ContactUsMail($data));

            return redirect()->back()->with('success', 'Email sent successfully.');
        } catch (Swift_TransportException $exception) {
            return redirect()->back()->with('error', 'Failed to send email. Please try again later.');
        }

        // or anthor solution 
        // if (count(Mail::failures()) > 0) {
        //     return redirect()->back()->with('error', 'Failed to send email.');
        // }

        // return redirect()->back()->with('success', 'Email sent successfully.');
    }
}

