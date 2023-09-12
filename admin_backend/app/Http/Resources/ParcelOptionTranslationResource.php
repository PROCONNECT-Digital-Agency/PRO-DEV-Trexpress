<?php

namespace App\Http\Resources;

use App\Models\ParcelOptionTranslation;
use Illuminate\Contracts\Support\Arrayable;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ParcelOptionTranslationResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  Request  $request
     * @return array
     */
    public function toArray($request): array
    {
        /** @var ParcelOptionTranslation|JsonResource $this */
        return [
            'id'                => $this->when($this->id, $this->id),
            'parcel_option_id'  => $this->when($this->parcel_option_id, $this->parcel_option_id),
            'locale'            => $this->when($this->locale, $this->locale),
            'title'             => $this->when($this->title, $this->title),
            'deleted_at'        => $this->when($this->deleted_at, $this->deleted_at?->format('Y-m-d H:i:s') . 'Z'),
        ];
    }
}
