<?php

namespace App\Http\Controllers;

use App\Models\Ocr;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

use Illuminate\Support\Facades\Storage;
use thiagoalessio\TesseractOCR\TesseractOCR;


class ImageController extends Controller
{
    private $ocrs;

    

    public function index()
    {
        return view('website.ocr.image');
        // return view('website.ocr.imageUpload');
    }


    
    // public function upload(Request $request)
    // {
    //     if ($request->hasFile('image')) {
    //         $file = $request->file('image');
    //         $file_name = $file->getClientOriginalName();
    //         $destinationPath = public_path("images/" . $file_name);
    
    //         // Move the uploaded file to the images directory
    //         $file->move(public_path('images'), $file_name);
    
    //         echo "<h3>Image Upload Success</h3>";
    //         echo '<img src="' . asset("images/$file_name") . '" style="width:30%">';
    
    //         // Perform OCR using the TesseractOCR library
    //         $imagePath = public_path("images/$file_name");
    //         $text = (new TesseractOCR($imagePath))->run();
    
    //         echo "<br><h3>OCR after reading</h3><br><pre>$text</pre>";
    
    //         // Save to the database
    //         $model = new Ocr();
    //         $model->image_path = "images/$file_name";
    //         $model->extracted_text = $text;
    //         $model->save();
    //     }
    // }

    public function upload(Request $request)
    {
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();
            $destinationPath = public_path("images/" . $file_name);

            $file->move(public_path('images'), $file_name);

            $imagePath = "images/$file_name";
            $text = (new TesseractOCR(public_path($imagePath)))->run();

            // Save to the database
            $model = new Ocr();
            $model->image_path = $imagePath;
            $model->extracted_text = $text;
            $model->save();

            // Redirect to the view with image and OCR data
            return view('website.ocr.imageUpload', ['imagePath' => $imagePath, 'text' => $text]);
        }
    }

    
}








//          $request->validate(["image"=>"required|mimes:png,jpg,jpeg|max:100000"]);
//          $image = $request->image;
//          $imagePath = Storage::disk('public')->putFile('image',$image);
//          $tesseractOcr = new TesseractOCR(public_path("storage/$imagePath"));
//          $text = $tesseractOcr->run();
//          return response(["text"=>$text],Response::HTTP_OK);

//
//        $image = $request->file('image');
//        $filename= date('YmdHi').$image->getClientOriginalName();
//        $image-> move(public_path('images'), $filename);
//
//        $ocr = new TesseractOCR(public_path("images/$filename"));
//        $ocr->lang('eng');
//        $text = $ocr->run();
//        shell_exec('"C:\Program Files\Tesseract-OCR\\tesseract" "C:\xampp\htdocs\ecommerce-b3\ecommerce-b3\public\images\\'.$filename.'" out');
//        return redirect()->back()->with('text',$text);
