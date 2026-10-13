let rec remove_parenthesis (items : string list) : string =
  if List.length items <= 1 then
    items |> List.map (fun x -> x.Str.replaceAll(“[()]”, “”)) |> List.toList
  else
    (items |> List.take 1 |> List.map (fun x -> x.Str.replaceAll(“[()]”, “”))) @ remove_parenthesis (items |> List.drop 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
