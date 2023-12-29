function httpPost(event, data) {
	const xhr = new XMLHttpRequest(); 
	xhr.open("POST", "https://angelo_jobcenter/" + event, true);
	xhr.send(JSON.stringify({ data }));
}

window.addEventListener('message', function(event) {
	if (event.data.type == "NuiJOBS") {
		document.querySelector("body").style.display = 'block';
		showJobs();
	}
});

function showJobs() {
    const jobsList = document.querySelectorAll('.jobs-ul ul');

    jobsData.forEach(function(data) {
        const jobHtml = `
            <li>
                <h1>${data.label}</h1>
                <p>Dificultad: <span style="color: ${data.color};">${data.info}</span></p>
                <img src="/dist/files/assets/${data.img_name}.png" alt="Job Image">
                <button onclick="select('${data.name}')">TRABAJAR</button>
            </li>
        `;
        jobsList.forEach(function(list) {
            list.insertAdjacentHTML('beforeend', jobHtml);
        });
    });
}

function select(jobName) {
    console.log(jobName);
    httpPost("getjob", jobName);
    httpPost("nuioff");
    document.querySelector("body").style.display = 'none';
    setTimeout(() => {
        window.location.reload();
    }, 500); 
}


document.onkeydown = function (data) {
	if (data.which == '314' || '27') { 
		document.querySelector("body").style.display = 'none';
        window.location.reload();
		httpPost("nuioff");
	}
};
