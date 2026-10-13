let rec find_literals (text : string) (pattern : string) :  string * int * int =
match text with
| "" -> None
| text ->
  let rec search_helper (t : string) :  string * int * int =
    match t with
    | "" -> None
    | t ->
      let literal = Scanf.sscanf t pattern in
      match literal with
      | None -> search_helper (String.sub t 1 (String.length t -1))
      | Some literal -> (literal, 0, String.length t -1)
  in
  if String.length text < String.length pattern then
    None
  else
    search_helper text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
