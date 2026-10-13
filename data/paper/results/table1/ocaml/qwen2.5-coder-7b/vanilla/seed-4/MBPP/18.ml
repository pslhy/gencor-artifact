let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let rec helper chars to_remove result = 
    match chars with
    | [] -> List.rev result
    | c :: cs -> 
        if List.mem c to_remove then 
          helper cs to_remove result
        else 
          helper cs to_remove (c :: result)
  in 
  let to_remove = List.of_string second_string in
  helper (List.of_string string) to_remove []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
