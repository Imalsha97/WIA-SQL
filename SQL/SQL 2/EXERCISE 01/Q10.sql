Relation Name: Parts
Attributes:p#,name,color
Primary key:p#
Foreign key:null

Relation Name: Parts
Attributes:p#,name,color
Primary key:p#
Foreign key:null

Relation Name: supplier
Attributes:s#,name,address
Primary key:s#
Foreign key:null

Relation Name: can_supply
Attributes:p#,s#,qty
Primary key:p#,#s
Foreign key: P# references Parts.P#
S# references Supplier. 
S#

Relation Name:supplies
Attributes:p#,s#,qty,price
Primary key:p#,#s
Foreign key: P# references Parts.P#
S# references Supplier. 
S#


