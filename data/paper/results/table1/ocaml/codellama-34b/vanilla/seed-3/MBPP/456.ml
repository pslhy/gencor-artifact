let rec reverse_string_list (stringlist : string list) : string list =
  match stringlist with
  | [] -> []
  | h :: t -> reverse_string h :: reverse_string_list t

and reverse_string (string : string) : string =
  let charlist = String.to_list string in
  let rec aux (charlist : char list) (res : char list) =
    match charlist with
    | [] -> res
    | h :: t -> aux t (h :: res)
  in
  aux charlist [] |> String.of_list

let () =
  let str_list = ["hello"; "world!"; ""; "123456789"] in
  let res = reverse_string_list str_list in
  print_endline (String.concat ", " res)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
