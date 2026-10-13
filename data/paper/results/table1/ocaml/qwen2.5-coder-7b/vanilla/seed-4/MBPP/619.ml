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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
