(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string = 
  let rec helper chars nums = 
    match chars with 
    | [] -> List.rev nums 
    | c :: cs -> if Char.is_digit c then helper cs (c :: nums) else helper cs nums 
  in 
  let chars = String.to_list test_str in 
  let nums = helper chars [] in 
  let letters = List.filter (fun x -> not (Char.is_digit x)) chars in 
  List.fold_left (fun acc x -> acc ^ (Char.escaped x)) "" (letters @ nums)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:21: Unbound value "Char.is_digit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
  let rec helper chars nums = 
    match chars with 
    | [] -> List.rev nums 
    | c :: cs -> if Char.isdigit c then helper cs (c :: nums) else helper cs nums 
  in 
  let chars = String.to_list test_str in 
  let nums = helper chars [] in 
  let letters = List.filter (fun x -> not (Char.isdigit x)) chars in 
  List.fold_left (fun acc x -> acc ^ (Char.escaped x)) "" (letters @ nums)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:21: Unbound value "Char.isdigit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
  let rec helper chars nums = 
    match chars with 
    | [] -> List.rev nums 
    | c :: cs -> if Int.compare (Char.code c) (Char.code '0') >= 0 && Int.compare (Char.code c) (Char.code '9') <= 0 then helper cs (c :: nums) else helper cs nums 
  in 
  let chars = String.to_list test_str in 
  let nums = helper chars [] in 
  let letters = List.filter (fun x -> not (Int.compare (Char.code x) (Char.code '0') >= 0 && Int.compare (Char.code x) (Char.code '9') <= 0)) chars in 
  List.fold_left (fun acc x -> acc ^ (Char.escaped x)) "" (letters @ nums)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:15: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
  let rec helper chars nums = 
    match chars with 
    | [] -> List.rev nums 
    | c :: cs -> if Int.compare (Char.code c) (Char.code '0') >= 0 && Int.compare (Char.code c) (Char.code '9') <= 0 then helper cs (c :: nums) else helper cs nums 
  in 
  let chars = String.explode test_str in 
  let nums = helper chars [] in 
  let letters = List.filter (fun x -> not (Int.compare (Char.code x) (Char.code '0') >= 0 && Int.compare (Char.code x) (Char.code '9') <= 0)) chars in 
  List.fold_left (fun acc x -> acc ^ (Char.escaped x)) "" (letters @ nums)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:15: Unbound value "String.explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string = 
  let rec helper chars nums = 
    match chars with 
    | [] -> List.rev nums 
    | c :: cs -> if Int.compare (Char.code c) (Char.code '0') >= 0 && Int.compare (Char.code c) (Char.code '9') <= 0 then helper cs (c :: nums) else helper cs nums 
  in 
  let chars = test_str in 
  let nums = helper (String.to_seq chars |> Seq.map (fun c -> c) |> Seq.toList) [] in 
  let letters = List.filter (fun x -> not (Int.compare (Char.code x) (Char.code '0') >= 0 && Int.compare (Char.code x) (Char.code '9') <= 0)) (String.to_seq chars |> Seq.map (fun c -> c) |> Seq.toList) in 
  let rec append_list lst str = 
    match lst with 
    | [] -> str 
    | x :: xs -> append_list xs (str ^ (Char.escaped x)) 
  in 
  (append_list letters "") ^ (append_list nums "")

