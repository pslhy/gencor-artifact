let rec unique_digits (x : int list) : int list = 
  let contains_even_digit n = 
    let rec check_digits n = 
      match n with 
      | 0 -> false 
      | _ -> 
          let digit = n mod 10 in 
          if digit mod 2 = 0 then true else check_digits (n / 10) 
    in 
    check_digits n 
  in 
  let filter_list lst = 
    List.filter (fun x -> not (contains_even_digit x)) lst 
  in 
  List.sort compare (filter_list x)


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
