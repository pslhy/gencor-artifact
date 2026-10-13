let rec unique_digits (x : int list) : int list = 
  let has_no_even_digit n =
    let rec check_digit d =
      if d = 0 then true
      else if d mod 2 = 0 then false
      else check_digit (d / 10)
    in
    check_digit n
  in
  let filtered = List.filter has_no_even_digit x in
  List.sort compare filtered


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of positive integers x. return a sorted list of all *)
(*     elements that hasn't any even digit. *)
(*     Note: Returned list should be sorted in increasing order. *)
(*     For example: *)
(*     >>> unique_digits [15; 33; 1422; 1] *)
(*     [1; 15; 33] *)
(*     >>> unique_digits [152; 323; 1422; 10] *)
(*     [] *)
