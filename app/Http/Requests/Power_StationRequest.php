<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Power_StationRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function messages(){
        return [
            'station_name.required' =>__('messages.station_name.required'),


        ];
    }
    public function rules(){
        return [
            'station_name' =>'required',


        ];
    }
}
