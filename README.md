# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 3.2.2

* Rails 7.0.6

* postgres 12.15

1) Created a new application using Ruby 3.2.2, Rails 7.0.2, PostgreSQL 12.15

2) Created an API controller using grape gem which will accept an HTTP POST request containing a JSON string.

<!-- { "ticket" : {
        "request_number": "19223202-000118",
        "sequence_number": "46591",
        "request_type": "Normal",
        "date_times": {
            "RequestTakenDateTime": "2011/07/02 23:09:38",
            "TransmissionDateTime": "",
            "LegalDateTime": "2011/07/08 07:00:00",
            "ResponseDueDateTime": "2011/07/13 23:59:59",
            "RestakeDate": "2011/07/21 00:00:00",
            "ExpirationDate": "2011/07/26 00:00:00",
            "LPMeetingAcceptDueDate": "",
            "OverheadBeginDate": "",
            "OverheadEndDate": ""
        },
        "primary_service_area_code": {
                "SACode": "ZZGL103"
        },
        "additional_service_area_codes": {
                "SACode": [
                    "ZZL04",
                    "ZZL02",
                    "ZZL03"
                ]
        },
        "dig_site_info": "((-81.13390268058475 32.07206917625161,-81.14660562247929 32.04064386441295,-81.08858407706913 32.02259853170128,-81.05322183341679 32.02434500961698,-81.05047525138554 32.042681017283066,-81.0319358226746 32.06537765335268,-81.01202310294804 32.078469305179404,-81.02850259513554 32.07963291684719,-81.07759774894413 32.07090546831167,-81.12154306144413 32.08806865844325,-81.13390268058475 32.07206917625161))"

    },
    "excavators": [{
            "company_name": "John Doe CONSTRUCTION",
            "address": "555 Some RD",
            "crew_on_site": true
            },
            {
            "company_name": "Doe CONSTRUCTION",
            "address": "555 Something RD",
            "crew_on_site": false
            }
            ]

        } -->

3) Once the API is called from Postman,data stored in the database.

4) Ticket and Excavator. Ticket and Excavator models are created with below fields.

	Ticket fields:
	- RequestNumber
	- SequenceNumber
	- RequestType
	- DateTimes->ResponseDueDateTime
	- ServiceArea->PrimaryServiceAreaCode->SACode,
	- ServiceArea->AdditionalServiceAreaCodes->SACode
	- DigsiteInfo->WellKnownText
	Excavator fields:
	- Excavator->CompanyName
	- Excavator->Address (full address including city, zip etc - can be one string)
	- Excavator->CrewOnSite

5) created controller with basic index and show HTML views for the tickets.

6) polygon data which should be plotted on a map on the ticket show view.


feature development:
  
  1. I will create separate model for service area, service code, excavator and excavation info.  based on the requirement I will create association.

 


