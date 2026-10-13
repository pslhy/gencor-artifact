let rec string_to_list (string : string) : string list = 
  let rec split acc s = 
    match String.index_opt s ' ' with
      None -> List.rev (s :: acc)
    | Some i -> split (s.Substring(0, i) :: acc) (s.Substring(i+1)) in
  split [] string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
