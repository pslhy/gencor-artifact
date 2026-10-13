let rec diff_even_odd (list1 : int list) : int = 
  let rec find_first_evenOdd lst even odd = 
    match lst with
    | [] -> (even, odd)
    | h::t -> 
       if h mod 2 = 0 then find_first_evenOdd t (Some h) odd
       elif even = None then find_first_evenOdd t even (Some h)
       else (even, odd)
  in
  match find_first_evenOdd list1 None None with
  | (Some even, Some odd) -> even - odd
  | _ -> failwith "List must contain at least one even and one odd number"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
