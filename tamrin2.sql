use danaDB

select person.OrderNumber,person.OrderDate,person.studentId,person.TotalAmount,
	   student.FirstName+' '+student.LastName as studentName

	   from person

inner join student on person.studentId=student.Id 



select
		person.OrderNumber,
		student.FirstName+' '+student.LastName as studentName,
		OrderItem.ProductId,OrderItem.UnitPrice,OrderItem.Quantity,(OrderItem.Quantity*OrderItem.UnitPrice)as TotalPrice

		from person

		inner join student on person.studentId=student.Id



select 
		person.OrderNumber,
		student.FirstName+' '+student.LastName as studentName,
		Product.ProductName,Product.SupplierId,
		Supplier.CompanyName as supplierName, 
		OrderItem.Quantity*OrderItem.UnitPrice as totalPrice

		from person 

		inner join student on person.Id=student.Id
		inner join OrderItem on person.Id=OrderItem.OrderId 
		inner join Product on OrderItem.ProductId=Product.Id
		inner join Supplier on Product.SupplierId=Supplier.Id
