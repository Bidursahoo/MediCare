// Get the date of birth input element
        var dobInput = document.getElementById('dob');

        // Add an event listener to update the age field when the date of birth changes
        dobInput.addEventListener('input', function() {
            // Get the selected date of birth
            var dob = new Date(this.value);

            // Calculate the age based on the current date and the selected date of birth
            var ageInMilliseconds = Date.now() - dob.getTime();
            var ageDate = new Date(ageInMilliseconds);
            var age = Math.abs(ageDate.getUTCFullYear() - 1970);

            // Update the age field with the calculated age
            document.getElementById('age').value = age;
        });