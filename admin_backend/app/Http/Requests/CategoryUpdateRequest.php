<?php

namespace App\Http\Requests;

use App\Helpers\ResponseError;
use App\Models\Category;
use App\Traits\ApiResponse;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Validation\Rule;
use Symfony\Component\HttpFoundation\Response;

class CategoryUpdateRequest extends FormRequest
{
    use ApiResponse;

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
    public function rules(): array
    {
        if (isset($this->category)){
            $id = Category::where('uuid',$this->category)->first()?->id;
        }
        return [
            'keywords'       => 'string',
            'parent_id'      => 'required|numeric',
            'type'           => 'required',Rule::in(Category::TYPES),
            'active'         => 'numeric', Rule::in(1,0),
            'images'         => 'array',
            'images.*'       => 'string',
            'title'          => 'required|array',
            'title.*'        => 'required|string|min:2|max:255',
            'description'    => 'array',
            'description.*'  => 'string|min:2',
            'position'       => 'integer|between:1,10'
        ];
    }
}
