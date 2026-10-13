let rec removezero_ip (ip : string) : string = 
  let rec helper s =
    match s with
    | "" | "0" -> ""
    | "0" :: rest -> helper rest
    | ch :: rest -> ch :: rest
  in 
  let parts = String.split_on_char '.' ip in
  let cleaned_parts = List.map helper parts in
  String.concat "." cleaned_parts


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
