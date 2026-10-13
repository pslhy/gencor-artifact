let rec extract_values (text : string) : string list =
  let len = String.length text in
  let rec loop (i : int) (values : string list) : string list =
    if i >= len then
      values
    else
      match text.[i] with
      | '"' ->
        let j =
          find_closing_quote text i
          |> Option.value ~default:(len - 1)
        in
        let value = String.sub text ~pos:i ~len:(j - i + 1) in
        loop (j + 1) (value :: values)
      | _ ->
        loop (i + 1) values
  in
  loop 0 []

and find_closing_quote (text : string) (start : int) : int option =
  let len = String.length text in
  let rec loop (i : int) : int option =
    if i >= len then
      None
    else
      match text.[i] with
      | '"' ->
        Some i
      | _ ->
        loop (i + 1)
  in
  loop start


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
