let rec extract_freq (test_list :  (int * int) list) : int = 
  let rec helper seen rest = 
    match rest with
    | [] -> List.length seen
    | (x,y)::xs -> 
      let new_tuple = (x, y) in
      if List.mem new_tuple seen then
        helper seen xs
      else
        helper (new_tuple :: seen) xs
  in
  helper [] test_list;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
