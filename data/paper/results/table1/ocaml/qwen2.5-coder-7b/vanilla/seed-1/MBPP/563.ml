let rec extract_values (text : string) : string list = 
  let rec find_quote acc start =
    try 
      let pos = String.index_from text start '"' in
      String.sub text (start + 1) (pos - start - 1) :: acc
    with Not_found -> acc
  in
  let result = find_quote [] 0 in
  List.rev result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
