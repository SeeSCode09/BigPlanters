# README

## Models
ProductGroup

Product
Color

QuoteRequest
Lead
States


## Relationships

ProductGroup
  --< Products
    --< Color

QuoteRequest
 --< Products
 --< Lead (prospective client)


## Admin QuoteRequest Brainstorming
- QuoteRequest index page
-- A current_user (admin) can claim a QuoteRequest
-- a "                  " can comment on a QuoteRequest
-- each QuoteRequest has "status" column, that shows "UnClaimed", "Claimed" "Resolved"

#### Colors example:
name
palette-Image
price_upcharge
product_id
