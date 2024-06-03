window.onload = () => {
    $(".company-floating-button").on("click", function () {
        let formData = {};
        formData.name = $("[name=NAME]").val();
        formData.phone = $("[name=PHONE]").val();
        formData.desc = $("[name=DESC]").val();
        window.fetch("/company/add_comp", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(formData)
        })
            .then(response => {
                return response.json();
            })
            .then(obj => {
                if (!obj.val) {
                    window.alert("Некоректные данные!")
                }
            })
    })

}