let rec find_literals (text : string) (pattern : string) :  string * int * int =
  if pattern = ""
  then raise Not_found
  else
    match text with
    | [] -> None
    | _ ->
        let rec search (text' : string) (pattern' : string) (i : int) : string * int * int =
          match text' with
          | [] -> None
          | h :: t
            -> if h = pattern'
               then Some (h, i)
               else search t pattern' (i + 1)
        in
        let found = search text pattern 0 in
        match found with
        | Some (c, i) -> c, i, i + String.length pattern
        | None -> raise Not_found


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
