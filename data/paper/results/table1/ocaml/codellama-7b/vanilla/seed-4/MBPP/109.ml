let rec odd_Equivalent (s : string) (n : int) : int =
  if n = 0 then
    s |> List.map ~f:(fun c -> int_of_char c) |> List.length
  else
    let k = rotate s n in
    odd_Equivalent k (n - 1)

and rotate (s : string) (n : int) : string =
  s |> explode |> List.rotate n |> implode

and explode (s : string) : char list =
  s |> String.to_seq |> List.of_seq

and implode (s : char list) : string =
  s |> List.map ~f:(fun c -> string_of_char c) |> String.concat ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
