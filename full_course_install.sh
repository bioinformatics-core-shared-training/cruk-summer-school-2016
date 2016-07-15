rm -rf /home/participant/Course_Materials
git clone https://github.com/bioinformatics-core-shared-training/cruk-summer-school-2016.git /home/participant/Course_Materials
cd /home/participant/Course_Materials
chmod +x getCourseData.sh
./getCourseData.sh
R -f installBioCPkgs.R
docker pull markdunning/summer-school2016
docker pull quay.io/wtsicgp/cgp_in_a_box
docker run -v /home/participant/Course_Materials:/home/participant/Course_Materials markdunning/summer-school2016 /bin/sh -c "chmod +x /home/participant/Course_Materials/Day1/docker_data_for_day1.sh && cd /home/participant/Course_Materials/Day1/ && ./docker_data_for_day1.sh"
docker run -v /home/participant/Course_Materials:/home/participant/Course_Materials markdunning/summer-school2016 /bin/sh -c "chmod +x /home/participant/Course_Materials/ref_data/docker_index_genome.sh && cd /home/participant/Course_Materials/ref_data/ && ./docker_index_genome.sh"
