
let rec reverse_string_list (stringlist : string list) : string list = 
  List.map (fun s -> let rec reverse acc = function
      | [] -> acc
      | x::xs -> reverse (x :: acc) xs
    in reverse [] (String.to_seq s) |> String.of_seq) stringlist

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
