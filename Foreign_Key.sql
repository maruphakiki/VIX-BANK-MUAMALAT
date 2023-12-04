# 2.MEMBUAT RELASI ANTAR TABLE
# Relasi Table Customers & Orders(CustomerID) memiliki hubungan one to many, yang artinya satu customer dapat melakukan banyak pesanan 
ALTER TABLE bank_muamalat.Orders 
ADD CONSTRAINT fk_CustomerID 
FOREIGN KEY (CustomerID) 
REFERENCES bank_muamalat.Customers(CustomerID) NOT ENFORCED;

#Relasi Table Products & Orders(ProdNumber) memiliki hubungan one to many, yang artinya satu product dapat dilakukan banyak pemesanan
ALTER TABLE bank_muamalat.Orders 
ADD CONSTRAINT fk_ProdNumber 
FOREIGN KEY (ProdNumber) 
REFERENCES bank_muamalat.Products(ProdNumber) NOT ENFORCED;

#Relasi Table Products & ProductCategory(Category & CategoryID) memiliki hubungan one to many, yang artinya satu Kategori Produk memiliki banyak Produk
ALTER TABLE bank_muamalat.Products
ADD CONSTRAINT fk_Category 
FOREIGN KEY (Category) 
REFERENCES bank_muamalat.ProductCategory(CategoryID) NOT ENFORCED;