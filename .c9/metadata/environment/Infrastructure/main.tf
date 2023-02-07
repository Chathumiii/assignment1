{"filter":false,"title":"main.tf","tooltip":"/Infrastructure/main.tf","undoManager":{"mark":62,"position":62,"stack":[[{"start":{"row":0,"column":0},"end":{"row":32,"column":1},"action":"insert","lines":["provider \"aws\" {","  region = \"us-east-1\"","}","","data \"aws_ami\" \"latest_amazon_linux\" {","  owners      = [\"amazon\"]","  most_recent = true","  filter {","    name   = \"name\"","    values = [\"amzn2-ami-hvm-*-x86_64-gp2\"]","  }","}","","resource \"aws_instance\" \"webapp_server\" {","  ami                     = data.aws_ami.latest_amazon_linux.id","  instance_type           = \"t2.micro\"","  subnet_id               = aws_subnet.public_subnet.id","  iam_instance_profile    = \"LabInstanceProfile\"","  security_groups         = [aws_security_group.webapp_sg.id]","  key_name                = \"clo835_a1\"","","  tags = {","    Name = \"webapp-server\"","  }","}","","resource \"aws_ecr_repository\" \"webapp_images\" {","  name = \"webapp-images\"","}","","resource \"aws_ecr_repository\" \"mysql_images\" {","  name = \"mysql-images\"","}"],"id":1}],[{"start":{"row":17,"column":31},"end":{"row":17,"column":32},"action":"remove","lines":["b"],"id":2},{"start":{"row":17,"column":30},"end":{"row":17,"column":31},"action":"remove","lines":["a"]},{"start":{"row":17,"column":29},"end":{"row":17,"column":30},"action":"remove","lines":["L"]}],[{"start":{"row":17,"column":29},"end":{"row":17,"column":30},"action":"insert","lines":["M"],"id":3},{"start":{"row":17,"column":30},"end":{"row":17,"column":31},"action":"insert","lines":["y"]}],[{"start":{"row":19,"column":37},"end":{"row":19,"column":38},"action":"remove","lines":["1"],"id":4},{"start":{"row":19,"column":36},"end":{"row":19,"column":37},"action":"remove","lines":["a"]},{"start":{"row":19,"column":35},"end":{"row":19,"column":36},"action":"remove","lines":["_"]},{"start":{"row":19,"column":34},"end":{"row":19,"column":35},"action":"remove","lines":["5"]},{"start":{"row":19,"column":33},"end":{"row":19,"column":34},"action":"remove","lines":["3"]},{"start":{"row":19,"column":32},"end":{"row":19,"column":33},"action":"remove","lines":["8"]},{"start":{"row":19,"column":31},"end":{"row":19,"column":32},"action":"remove","lines":["o"]},{"start":{"row":19,"column":30},"end":{"row":19,"column":31},"action":"remove","lines":["l"]},{"start":{"row":19,"column":29},"end":{"row":19,"column":30},"action":"remove","lines":["c"]}],[{"start":{"row":19,"column":29},"end":{"row":19,"column":30},"action":"insert","lines":["m"],"id":5},{"start":{"row":19,"column":30},"end":{"row":19,"column":31},"action":"insert","lines":["y"]}],[{"start":{"row":19,"column":31},"end":{"row":19,"column":32},"action":"insert","lines":["_"],"id":6},{"start":{"row":19,"column":32},"end":{"row":19,"column":33},"action":"insert","lines":["k"]},{"start":{"row":19,"column":33},"end":{"row":19,"column":34},"action":"insert","lines":["r"]},{"start":{"row":19,"column":34},"end":{"row":19,"column":35},"action":"insert","lines":["y"]}],[{"start":{"row":19,"column":34},"end":{"row":19,"column":35},"action":"remove","lines":["y"],"id":7},{"start":{"row":19,"column":33},"end":{"row":19,"column":34},"action":"remove","lines":["r"]}],[{"start":{"row":19,"column":33},"end":{"row":19,"column":34},"action":"insert","lines":["e"],"id":8},{"start":{"row":19,"column":34},"end":{"row":19,"column":35},"action":"insert","lines":["y"]},{"start":{"row":19,"column":35},"end":{"row":19,"column":36},"action":"insert","lines":["_"]},{"start":{"row":19,"column":36},"end":{"row":19,"column":37},"action":"insert","lines":["p"]}],[{"start":{"row":19,"column":37},"end":{"row":19,"column":38},"action":"insert","lines":["a"],"id":9},{"start":{"row":19,"column":38},"end":{"row":19,"column":39},"action":"insert","lines":["i"]},{"start":{"row":19,"column":39},"end":{"row":19,"column":40},"action":"insert","lines":["r"]}],[{"start":{"row":27,"column":10},"end":{"row":27,"column":11},"action":"insert","lines":["m"],"id":10},{"start":{"row":27,"column":11},"end":{"row":27,"column":12},"action":"insert","lines":["y"]}],[{"start":{"row":27,"column":12},"end":{"row":27,"column":13},"action":"insert","lines":["-"],"id":11}],[{"start":{"row":31,"column":12},"end":{"row":31,"column":13},"action":"insert","lines":["-"],"id":12}],[{"start":{"row":32,"column":1},"end":{"row":32,"column":2},"action":"insert","lines":["t"],"id":13},{"start":{"row":32,"column":2},"end":{"row":32,"column":3},"action":"insert","lines":["e"]},{"start":{"row":32,"column":3},"end":{"row":32,"column":4},"action":"insert","lines":["r"]}],[{"start":{"row":32,"column":3},"end":{"row":32,"column":4},"action":"remove","lines":["r"],"id":14},{"start":{"row":32,"column":2},"end":{"row":32,"column":3},"action":"remove","lines":["e"]},{"start":{"row":32,"column":1},"end":{"row":32,"column":2},"action":"remove","lines":["t"]}],[{"start":{"row":17,"column":30},"end":{"row":17,"column":31},"action":"remove","lines":["y"],"id":15},{"start":{"row":17,"column":29},"end":{"row":17,"column":30},"action":"remove","lines":["M"]}],[{"start":{"row":17,"column":29},"end":{"row":17,"column":30},"action":"insert","lines":["L"],"id":16},{"start":{"row":17,"column":30},"end":{"row":17,"column":31},"action":"insert","lines":["a"]},{"start":{"row":17,"column":31},"end":{"row":17,"column":32},"action":"insert","lines":["b"]}],[{"start":{"row":19,"column":29},"end":{"row":19,"column":40},"action":"remove","lines":["my_key_pair"],"id":17},{"start":{"row":19,"column":29},"end":{"row":19,"column":38},"action":"insert","lines":["clo835_a1"]}],[{"start":{"row":19,"column":29},"end":{"row":19,"column":38},"action":"remove","lines":["clo835_a1"],"id":18},{"start":{"row":19,"column":29},"end":{"row":19,"column":30},"action":"insert","lines":["m"]},{"start":{"row":19,"column":30},"end":{"row":19,"column":31},"action":"insert","lines":["y"]},{"start":{"row":19,"column":31},"end":{"row":19,"column":32},"action":"insert","lines":["_"]}],[{"start":{"row":19,"column":32},"end":{"row":19,"column":33},"action":"insert","lines":["k"],"id":19},{"start":{"row":19,"column":33},"end":{"row":19,"column":34},"action":"insert","lines":["e"]},{"start":{"row":19,"column":34},"end":{"row":19,"column":35},"action":"insert","lines":["y"]}],[{"start":{"row":0,"column":0},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":20}],[{"start":{"row":0,"column":0},"end":{"row":0,"column":1},"action":"insert","lines":["/"],"id":21},{"start":{"row":0,"column":1},"end":{"row":0,"column":2},"action":"insert","lines":["/"]},{"start":{"row":0,"column":2},"end":{"row":0,"column":3},"action":"insert","lines":["T"]},{"start":{"row":0,"column":3},"end":{"row":0,"column":4},"action":"insert","lines":["e"]},{"start":{"row":0,"column":4},"end":{"row":0,"column":5},"action":"insert","lines":["r"]},{"start":{"row":0,"column":5},"end":{"row":0,"column":6},"action":"insert","lines":["r"]},{"start":{"row":0,"column":6},"end":{"row":0,"column":7},"action":"insert","lines":["a"]},{"start":{"row":0,"column":7},"end":{"row":0,"column":8},"action":"insert","lines":["f"]},{"start":{"row":0,"column":8},"end":{"row":0,"column":9},"action":"insert","lines":["o"]}],[{"start":{"row":0,"column":9},"end":{"row":0,"column":10},"action":"insert","lines":["r"],"id":22},{"start":{"row":0,"column":10},"end":{"row":0,"column":11},"action":"insert","lines":["m"]}],[{"start":{"row":0,"column":11},"end":{"row":0,"column":12},"action":"insert","lines":[" "],"id":23},{"start":{"row":0,"column":12},"end":{"row":0,"column":13},"action":"insert","lines":["d"]},{"start":{"row":0,"column":13},"end":{"row":0,"column":14},"action":"insert","lines":["e"]},{"start":{"row":0,"column":14},"end":{"row":0,"column":15},"action":"insert","lines":["p"]},{"start":{"row":0,"column":15},"end":{"row":0,"column":16},"action":"insert","lines":["l"]},{"start":{"row":0,"column":16},"end":{"row":0,"column":17},"action":"insert","lines":["o"]},{"start":{"row":0,"column":17},"end":{"row":0,"column":18},"action":"insert","lines":["y"]},{"start":{"row":0,"column":18},"end":{"row":0,"column":19},"action":"insert","lines":["m"]},{"start":{"row":0,"column":19},"end":{"row":0,"column":20},"action":"insert","lines":["e"]},{"start":{"row":0,"column":20},"end":{"row":0,"column":21},"action":"insert","lines":["n"]},{"start":{"row":0,"column":21},"end":{"row":0,"column":22},"action":"insert","lines":["t"]}],[{"start":{"row":0,"column":22},"end":{"row":0,"column":23},"action":"insert","lines":[" "],"id":24},{"start":{"row":0,"column":23},"end":{"row":0,"column":24},"action":"insert","lines":["c"]},{"start":{"row":0,"column":24},"end":{"row":0,"column":25},"action":"insert","lines":["o"]},{"start":{"row":0,"column":25},"end":{"row":0,"column":26},"action":"insert","lines":["d"]},{"start":{"row":0,"column":26},"end":{"row":0,"column":27},"action":"insert","lines":["e"]},{"start":{"row":0,"column":27},"end":{"row":0,"column":28},"action":"insert","lines":["s"]}],[{"start":{"row":0,"column":0},"end":{"row":4,"column":0},"action":"remove","lines":["//Terraform deployment codes","provider \"aws\" {","  region = \"us-east-1\"","}",""],"id":25}],[{"start":{"row":0,"column":0},"end":{"row":1,"column":0},"action":"remove","lines":["",""],"id":26}],[{"start":{"row":0,"column":34},"end":{"row":0,"column":35},"action":"remove","lines":["x"],"id":27},{"start":{"row":0,"column":33},"end":{"row":0,"column":34},"action":"remove","lines":["u"]},{"start":{"row":0,"column":32},"end":{"row":0,"column":33},"action":"remove","lines":["n"]},{"start":{"row":0,"column":31},"end":{"row":0,"column":32},"action":"remove","lines":["i"]},{"start":{"row":0,"column":30},"end":{"row":0,"column":31},"action":"remove","lines":["l"]},{"start":{"row":0,"column":29},"end":{"row":0,"column":30},"action":"remove","lines":["_"]},{"start":{"row":0,"column":28},"end":{"row":0,"column":29},"action":"remove","lines":["n"]},{"start":{"row":0,"column":27},"end":{"row":0,"column":28},"action":"remove","lines":["o"]},{"start":{"row":0,"column":26},"end":{"row":0,"column":27},"action":"remove","lines":["z"]},{"start":{"row":0,"column":25},"end":{"row":0,"column":26},"action":"remove","lines":["a"]},{"start":{"row":0,"column":24},"end":{"row":0,"column":25},"action":"remove","lines":["m"]},{"start":{"row":0,"column":23},"end":{"row":0,"column":24},"action":"remove","lines":["a"]},{"start":{"row":0,"column":22},"end":{"row":0,"column":23},"action":"remove","lines":["_"]},{"start":{"row":0,"column":21},"end":{"row":0,"column":22},"action":"remove","lines":["t"]},{"start":{"row":0,"column":20},"end":{"row":0,"column":21},"action":"remove","lines":["s"]},{"start":{"row":0,"column":19},"end":{"row":0,"column":20},"action":"remove","lines":["e"]},{"start":{"row":0,"column":18},"end":{"row":0,"column":19},"action":"remove","lines":["t"]},{"start":{"row":0,"column":17},"end":{"row":0,"column":18},"action":"remove","lines":["a"]},{"start":{"row":0,"column":16},"end":{"row":0,"column":17},"action":"remove","lines":["l"]}],[{"start":{"row":0,"column":16},"end":{"row":0,"column":17},"action":"insert","lines":["l"],"id":28},{"start":{"row":0,"column":17},"end":{"row":0,"column":18},"action":"insert","lines":["a"]}],[{"start":{"row":0,"column":18},"end":{"row":0,"column":19},"action":"insert","lines":["t"],"id":29},{"start":{"row":0,"column":19},"end":{"row":0,"column":20},"action":"insert","lines":["e"]},{"start":{"row":0,"column":20},"end":{"row":0,"column":21},"action":"insert","lines":["s"]},{"start":{"row":0,"column":21},"end":{"row":0,"column":22},"action":"insert","lines":["t"]},{"start":{"row":0,"column":22},"end":{"row":0,"column":23},"action":"insert","lines":["L"]},{"start":{"row":0,"column":23},"end":{"row":0,"column":24},"action":"insert","lines":["i"]}],[{"start":{"row":0,"column":24},"end":{"row":0,"column":25},"action":"insert","lines":["n"],"id":30},{"start":{"row":0,"column":25},"end":{"row":0,"column":26},"action":"insert","lines":["u"]},{"start":{"row":0,"column":26},"end":{"row":0,"column":27},"action":"insert","lines":["x"]},{"start":{"row":0,"column":27},"end":{"row":0,"column":28},"action":"insert","lines":["A"]},{"start":{"row":0,"column":28},"end":{"row":0,"column":29},"action":"insert","lines":["M"]}],[{"start":{"row":0,"column":29},"end":{"row":0,"column":30},"action":"insert","lines":["I"],"id":31}],[{"start":{"row":10,"column":59},"end":{"row":10,"column":60},"action":"remove","lines":["x"],"id":32},{"start":{"row":10,"column":58},"end":{"row":10,"column":59},"action":"remove","lines":["u"]},{"start":{"row":10,"column":57},"end":{"row":10,"column":58},"action":"remove","lines":["n"]},{"start":{"row":10,"column":56},"end":{"row":10,"column":57},"action":"remove","lines":["i"]},{"start":{"row":10,"column":55},"end":{"row":10,"column":56},"action":"remove","lines":["l"]},{"start":{"row":10,"column":54},"end":{"row":10,"column":55},"action":"remove","lines":["_"]},{"start":{"row":10,"column":53},"end":{"row":10,"column":54},"action":"remove","lines":["n"]},{"start":{"row":10,"column":52},"end":{"row":10,"column":53},"action":"remove","lines":["o"]},{"start":{"row":10,"column":51},"end":{"row":10,"column":52},"action":"remove","lines":["z"]},{"start":{"row":10,"column":50},"end":{"row":10,"column":51},"action":"remove","lines":["a"]},{"start":{"row":10,"column":49},"end":{"row":10,"column":50},"action":"remove","lines":["m"]},{"start":{"row":10,"column":48},"end":{"row":10,"column":49},"action":"remove","lines":["a"]},{"start":{"row":10,"column":47},"end":{"row":10,"column":48},"action":"remove","lines":["_"]},{"start":{"row":10,"column":46},"end":{"row":10,"column":47},"action":"remove","lines":["t"]},{"start":{"row":10,"column":45},"end":{"row":10,"column":46},"action":"remove","lines":["s"]},{"start":{"row":10,"column":44},"end":{"row":10,"column":45},"action":"remove","lines":["e"]},{"start":{"row":10,"column":43},"end":{"row":10,"column":44},"action":"remove","lines":["t"]},{"start":{"row":10,"column":42},"end":{"row":10,"column":43},"action":"remove","lines":["a"]}],[{"start":{"row":10,"column":42},"end":{"row":10,"column":43},"action":"insert","lines":["a"],"id":33},{"start":{"row":10,"column":43},"end":{"row":10,"column":44},"action":"insert","lines":["t"]},{"start":{"row":10,"column":44},"end":{"row":10,"column":45},"action":"insert","lines":["e"]},{"start":{"row":10,"column":45},"end":{"row":10,"column":46},"action":"insert","lines":["s"]},{"start":{"row":10,"column":46},"end":{"row":10,"column":47},"action":"insert","lines":["t"]}],[{"start":{"row":10,"column":41},"end":{"row":10,"column":47},"action":"remove","lines":["latest"],"id":34},{"start":{"row":10,"column":41},"end":{"row":10,"column":55},"action":"insert","lines":["latestLinuxAMI"]}],[{"start":{"row":14,"column":48},"end":{"row":14,"column":57},"action":"remove","lines":["webapp_sg"],"id":35},{"start":{"row":14,"column":48},"end":{"row":14,"column":49},"action":"insert","lines":["e"]},{"start":{"row":14,"column":49},"end":{"row":14,"column":50},"action":"insert","lines":["c"]},{"start":{"row":14,"column":50},"end":{"row":14,"column":51},"action":"insert","lines":["2"]},{"start":{"row":14,"column":51},"end":{"row":14,"column":52},"action":"insert","lines":["S"]}],[{"start":{"row":14,"column":51},"end":{"row":14,"column":52},"action":"remove","lines":["S"],"id":36}],[{"start":{"row":14,"column":51},"end":{"row":14,"column":52},"action":"insert","lines":["_"],"id":37},{"start":{"row":14,"column":52},"end":{"row":14,"column":53},"action":"insert","lines":["s"]},{"start":{"row":14,"column":53},"end":{"row":14,"column":54},"action":"insert","lines":["g"]}],[{"start":{"row":9,"column":37},"end":{"row":9,"column":38},"action":"remove","lines":["r"],"id":38},{"start":{"row":9,"column":36},"end":{"row":9,"column":37},"action":"remove","lines":["e"]},{"start":{"row":9,"column":35},"end":{"row":9,"column":36},"action":"remove","lines":["v"]},{"start":{"row":9,"column":34},"end":{"row":9,"column":35},"action":"remove","lines":["r"]},{"start":{"row":9,"column":33},"end":{"row":9,"column":34},"action":"remove","lines":["e"]},{"start":{"row":9,"column":32},"end":{"row":9,"column":33},"action":"remove","lines":["s"]},{"start":{"row":9,"column":31},"end":{"row":9,"column":32},"action":"remove","lines":["_"]},{"start":{"row":9,"column":30},"end":{"row":9,"column":31},"action":"remove","lines":["p"]},{"start":{"row":9,"column":29},"end":{"row":9,"column":30},"action":"remove","lines":["p"]},{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"remove","lines":["a"]},{"start":{"row":9,"column":27},"end":{"row":9,"column":28},"action":"remove","lines":["b"]},{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"remove","lines":["e"]}],[{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"remove","lines":["w"],"id":39}],[{"start":{"row":9,"column":25},"end":{"row":9,"column":26},"action":"insert","lines":["e"],"id":40},{"start":{"row":9,"column":26},"end":{"row":9,"column":27},"action":"insert","lines":["c"]},{"start":{"row":9,"column":27},"end":{"row":9,"column":28},"action":"insert","lines":["2"]}],[{"start":{"row":18,"column":24},"end":{"row":18,"column":25},"action":"remove","lines":["r"],"id":41},{"start":{"row":18,"column":23},"end":{"row":18,"column":24},"action":"remove","lines":["e"]},{"start":{"row":18,"column":22},"end":{"row":18,"column":23},"action":"remove","lines":["v"]},{"start":{"row":18,"column":21},"end":{"row":18,"column":22},"action":"remove","lines":["r"]},{"start":{"row":18,"column":20},"end":{"row":18,"column":21},"action":"remove","lines":["e"]},{"start":{"row":18,"column":19},"end":{"row":18,"column":20},"action":"remove","lines":["s"]},{"start":{"row":18,"column":18},"end":{"row":18,"column":19},"action":"remove","lines":["-"]},{"start":{"row":18,"column":17},"end":{"row":18,"column":18},"action":"remove","lines":["p"]},{"start":{"row":18,"column":16},"end":{"row":18,"column":17},"action":"remove","lines":["p"]},{"start":{"row":18,"column":15},"end":{"row":18,"column":16},"action":"remove","lines":["a"]},{"start":{"row":18,"column":14},"end":{"row":18,"column":15},"action":"remove","lines":["b"]},{"start":{"row":18,"column":13},"end":{"row":18,"column":14},"action":"remove","lines":["e"]}],[{"start":{"row":18,"column":12},"end":{"row":18,"column":13},"action":"remove","lines":["w"],"id":42}],[{"start":{"row":18,"column":12},"end":{"row":18,"column":13},"action":"insert","lines":["e"],"id":43},{"start":{"row":18,"column":13},"end":{"row":18,"column":14},"action":"insert","lines":["c"]},{"start":{"row":18,"column":14},"end":{"row":18,"column":15},"action":"insert","lines":["2"]}],[{"start":{"row":12,"column":51},"end":{"row":12,"column":52},"action":"remove","lines":["t"],"id":44},{"start":{"row":12,"column":50},"end":{"row":12,"column":51},"action":"remove","lines":["e"]},{"start":{"row":12,"column":49},"end":{"row":12,"column":50},"action":"remove","lines":["n"]},{"start":{"row":12,"column":48},"end":{"row":12,"column":49},"action":"remove","lines":["b"]},{"start":{"row":12,"column":47},"end":{"row":12,"column":48},"action":"remove","lines":["u"]},{"start":{"row":12,"column":46},"end":{"row":12,"column":47},"action":"remove","lines":["s"]},{"start":{"row":12,"column":45},"end":{"row":12,"column":46},"action":"remove","lines":["_"]},{"start":{"row":12,"column":44},"end":{"row":12,"column":45},"action":"remove","lines":["c"]},{"start":{"row":12,"column":43},"end":{"row":12,"column":44},"action":"remove","lines":["i"]},{"start":{"row":12,"column":42},"end":{"row":12,"column":43},"action":"remove","lines":["l"]},{"start":{"row":12,"column":41},"end":{"row":12,"column":42},"action":"remove","lines":["b"]},{"start":{"row":12,"column":40},"end":{"row":12,"column":41},"action":"remove","lines":["u"]}],[{"start":{"row":12,"column":39},"end":{"row":12,"column":40},"action":"remove","lines":["p"],"id":45}],[{"start":{"row":12,"column":39},"end":{"row":12,"column":40},"action":"insert","lines":["t"],"id":46},{"start":{"row":12,"column":40},"end":{"row":12,"column":41},"action":"insert","lines":["h"]},{"start":{"row":12,"column":41},"end":{"row":12,"column":42},"action":"insert","lines":["i"]},{"start":{"row":12,"column":42},"end":{"row":12,"column":43},"action":"insert","lines":["s"]}],[{"start":{"row":22,"column":31},"end":{"row":22,"column":43},"action":"remove","lines":["webapp_image"],"id":47}],[{"start":{"row":22,"column":31},"end":{"row":22,"column":32},"action":"remove","lines":["s"],"id":48}],[{"start":{"row":22,"column":31},"end":{"row":22,"column":32},"action":"insert","lines":["a"],"id":49},{"start":{"row":22,"column":32},"end":{"row":22,"column":33},"action":"insert","lines":["p"]},{"start":{"row":22,"column":33},"end":{"row":22,"column":34},"action":"insert","lines":["p"]},{"start":{"row":22,"column":34},"end":{"row":22,"column":35},"action":"insert","lines":["l"]},{"start":{"row":22,"column":35},"end":{"row":22,"column":36},"action":"insert","lines":["i"]},{"start":{"row":22,"column":36},"end":{"row":22,"column":37},"action":"insert","lines":["c"]},{"start":{"row":22,"column":37},"end":{"row":22,"column":38},"action":"insert","lines":["a"]},{"start":{"row":22,"column":38},"end":{"row":22,"column":39},"action":"insert","lines":["t"]},{"start":{"row":22,"column":39},"end":{"row":22,"column":40},"action":"insert","lines":["i"]},{"start":{"row":22,"column":40},"end":{"row":22,"column":41},"action":"insert","lines":["o"]},{"start":{"row":22,"column":41},"end":{"row":22,"column":42},"action":"insert","lines":["n"]}],[{"start":{"row":26,"column":42},"end":{"row":26,"column":43},"action":"remove","lines":["s"],"id":50},{"start":{"row":26,"column":41},"end":{"row":26,"column":42},"action":"remove","lines":["e"]},{"start":{"row":26,"column":40},"end":{"row":26,"column":41},"action":"remove","lines":["g"]},{"start":{"row":26,"column":39},"end":{"row":26,"column":40},"action":"remove","lines":["a"]},{"start":{"row":26,"column":38},"end":{"row":26,"column":39},"action":"remove","lines":["m"]},{"start":{"row":26,"column":37},"end":{"row":26,"column":38},"action":"remove","lines":["i"]},{"start":{"row":26,"column":36},"end":{"row":26,"column":37},"action":"remove","lines":["_"]},{"start":{"row":26,"column":35},"end":{"row":26,"column":36},"action":"remove","lines":["l"]},{"start":{"row":26,"column":34},"end":{"row":26,"column":35},"action":"remove","lines":["q"]},{"start":{"row":26,"column":33},"end":{"row":26,"column":34},"action":"remove","lines":["s"]},{"start":{"row":26,"column":32},"end":{"row":26,"column":33},"action":"remove","lines":["y"]},{"start":{"row":26,"column":31},"end":{"row":26,"column":32},"action":"remove","lines":["m"]}],[{"start":{"row":26,"column":31},"end":{"row":26,"column":32},"action":"insert","lines":["d"],"id":51},{"start":{"row":26,"column":32},"end":{"row":26,"column":33},"action":"insert","lines":["a"]},{"start":{"row":26,"column":33},"end":{"row":26,"column":34},"action":"insert","lines":["t"]},{"start":{"row":26,"column":34},"end":{"row":26,"column":35},"action":"insert","lines":["a"]},{"start":{"row":26,"column":35},"end":{"row":26,"column":36},"action":"insert","lines":["b"]},{"start":{"row":26,"column":36},"end":{"row":26,"column":37},"action":"insert","lines":["a"]},{"start":{"row":26,"column":37},"end":{"row":26,"column":38},"action":"insert","lines":["s"]},{"start":{"row":26,"column":38},"end":{"row":26,"column":39},"action":"insert","lines":["e"]}],[{"start":{"row":23,"column":10},"end":{"row":23,"column":25},"action":"remove","lines":["my-webapp-image"],"id":52}],[{"start":{"row":23,"column":10},"end":{"row":23,"column":11},"action":"remove","lines":["s"],"id":53}],[{"start":{"row":23,"column":10},"end":{"row":23,"column":11},"action":"insert","lines":["a"],"id":54},{"start":{"row":23,"column":11},"end":{"row":23,"column":12},"action":"insert","lines":["p"]},{"start":{"row":23,"column":12},"end":{"row":23,"column":13},"action":"insert","lines":["p"]},{"start":{"row":23,"column":13},"end":{"row":23,"column":14},"action":"insert","lines":["l"]},{"start":{"row":23,"column":14},"end":{"row":23,"column":15},"action":"insert","lines":["i"]},{"start":{"row":23,"column":15},"end":{"row":23,"column":16},"action":"insert","lines":["c"]},{"start":{"row":23,"column":16},"end":{"row":23,"column":17},"action":"insert","lines":["a"]},{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"insert","lines":["i"]}],[{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"remove","lines":["i"],"id":55}],[{"start":{"row":23,"column":17},"end":{"row":23,"column":18},"action":"insert","lines":["t"],"id":56},{"start":{"row":23,"column":18},"end":{"row":23,"column":19},"action":"insert","lines":["i"]},{"start":{"row":23,"column":19},"end":{"row":23,"column":20},"action":"insert","lines":["o"]},{"start":{"row":23,"column":20},"end":{"row":23,"column":21},"action":"insert","lines":["n"]}],[{"start":{"row":27,"column":22},"end":{"row":27,"column":23},"action":"remove","lines":["s"],"id":57},{"start":{"row":27,"column":21},"end":{"row":27,"column":22},"action":"remove","lines":["e"]},{"start":{"row":27,"column":20},"end":{"row":27,"column":21},"action":"remove","lines":["g"]},{"start":{"row":27,"column":19},"end":{"row":27,"column":20},"action":"remove","lines":["a"]},{"start":{"row":27,"column":18},"end":{"row":27,"column":19},"action":"remove","lines":["m"]},{"start":{"row":27,"column":17},"end":{"row":27,"column":18},"action":"remove","lines":["i"]},{"start":{"row":27,"column":16},"end":{"row":27,"column":17},"action":"remove","lines":["-"]},{"start":{"row":27,"column":15},"end":{"row":27,"column":16},"action":"remove","lines":["l"]},{"start":{"row":27,"column":14},"end":{"row":27,"column":15},"action":"remove","lines":["q"]},{"start":{"row":27,"column":13},"end":{"row":27,"column":14},"action":"remove","lines":["s"]},{"start":{"row":27,"column":12},"end":{"row":27,"column":13},"action":"remove","lines":["-"]},{"start":{"row":27,"column":11},"end":{"row":27,"column":12},"action":"remove","lines":["y"]}],[{"start":{"row":27,"column":10},"end":{"row":27,"column":11},"action":"remove","lines":["m"],"id":58}],[{"start":{"row":27,"column":10},"end":{"row":27,"column":11},"action":"insert","lines":["r"],"id":59},{"start":{"row":27,"column":11},"end":{"row":27,"column":12},"action":"insert","lines":["e"]},{"start":{"row":27,"column":12},"end":{"row":27,"column":13},"action":"insert","lines":["p"]},{"start":{"row":27,"column":13},"end":{"row":27,"column":14},"action":"insert","lines":["o"]}],[{"start":{"row":22,"column":0},"end":{"row":24,"column":1},"action":"remove","lines":["resource \"aws_ecr_repository\" \"application\" {","  name = \"application\"","}"],"id":60},{"start":{"row":21,"column":0},"end":{"row":22,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":25,"column":1},"end":{"row":26,"column":0},"action":"insert","lines":["",""],"id":61},{"start":{"row":26,"column":0},"end":{"row":27,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":27,"column":0},"end":{"row":29,"column":1},"action":"insert","lines":["resource \"aws_ecr_repository\" \"application\" {","  name = \"application\"","}"],"id":62}],[{"start":{"row":16,"column":0},"end":{"row":19,"column":3},"action":"remove","lines":["","  tags = {","    Name = \"ec2\"","  }"],"id":63},{"start":{"row":15,"column":36},"end":{"row":16,"column":0},"action":"remove","lines":["",""]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":13,"column":33},"end":{"row":13,"column":33},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1675801102180,"hash":"f6448ac27d73041758a9b5e4d978c907f9a5654a"}