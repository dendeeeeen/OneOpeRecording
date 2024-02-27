document.addEventListener("turbo:load", function() {
	document.getElementById('search-button').addEventListener('click', function() {
		const searchValue = document.getElementById('searchInputAccountID').value.toLowerCase();
		const accountItems = document.querySelectorAll('#accountList tr');

		accountItems.forEach(function(item) {
			const itemText = item.textContent.toLowerCase();
			if (itemText.includes(searchValue)) {
				item.style.display = '';
			} else {
				item.style.display = 'none';
			}
		});
	});
});