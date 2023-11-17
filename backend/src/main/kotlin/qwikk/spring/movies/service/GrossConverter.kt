package qwikk.spring.movies.service

import jakarta.persistence.AttributeConverter

class GrossConverter: AttributeConverter<Int, String>{
    override fun convertToDatabaseColumn(attribute: Int) = attribute.toString()
    override fun convertToEntityAttribute(dbData: String) = dbData.replace(",", "").toInt()

}