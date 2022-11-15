<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Storage;
use thiagoalessio\TesseractOCR\TesseractOCR;


class ImageController extends Controller
{

    public function index()
    {
        return view('website.ocr.image');
    }

    public function upload(Request $request){


        if (isset($_FILES['image'])) {
            $file_name = $_FILES['image']['name'];
            $file_tmp = $_FILES['image']['tmp_name'];
            move_uploaded_file($file_tmp, "images/" . $file_name);
            echo "<h3>Image Upload Success</h3>";
            echo '<img src="images/' . $file_name . '" style="width:30%">';
          //  $ocr = new TesseractOCR(public_path("images/$file_name"));
           shell_exec('"C:\Program Files\Tesseract-OCR\\tesseract" "C:\xampp\htdocs\ecommerce-b3\ecommerce-b3\public\images\\' . $file_name . '" out');

            echo "<br><h3>OCR after reading</h3><br><pre>";

            $myfile = fopen("out.txt", "r") or die("Unable to open file!");
            echo fread($myfile, filesize("out.txt"));
            fclose($myfile);
            echo "</pre>";
           //return redirect()->back()->with('text',$text);


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
