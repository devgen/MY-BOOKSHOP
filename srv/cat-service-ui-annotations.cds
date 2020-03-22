 annotate CatalogService.Books with @( // header-level annotations
    
    // Book List
    UI: {
        SelectionFields: [ ID ],
        LineItem: [
            {$Type: 'UI.DataField', Value: ID,Label: 'ID'},
            {$Type: 'UI.DataField', Value: title,Label: 'Title'},
            {$Type: 'UI.DataField', Value: author,Label: 'Author'},
            {$Type: 'UI.DataField', Value: stock,Label: 'stock'}
        ],
        HeaderInfo: {
            TypeName: 'Book',
            TypeNAmePlural: 'Books'
        }
        
    }
);


annotate CatalogService.Orders with {
	addressID @title:'Address ID'
}

annotate CatalogService.Orders with @UI.SelectionFields: [ book.title ]; 

annotate CatalogService.Orders with @(
    
    UI: {
	LineItem: [
			{$Type: 'UI.DataField', Value: ID, Label: 'Order Quantity' },
			{$Type: 'UI.DataField', Value: book.title, Label: 'Book Title' },
			{$Type: 'UI.DataField', Value: country, Label: 'country' },
			{$Type: 'UI.DataField', Value: amount, Label: 'amount' },
            {$Type: 'UI.DataField', Value: book.author, Label: 'Autor' }
		]
     }
);