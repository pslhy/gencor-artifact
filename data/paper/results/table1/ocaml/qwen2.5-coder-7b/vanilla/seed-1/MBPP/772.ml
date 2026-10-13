let rec remove_length (test_str : string) (k : int) : string = 
  let rec split (str: string) : string list = 
    let rec loop (str: string) (acc: string list) : string list = 
      if String.length str <= 0 then acc
      else loop (String.sub str (String.length test_str + 1) (String.length str - String.length test_str - 1)) (str :: acc)
    in 
    loop str []
  in let lengths = split test_str in 
  let rec filter (lst: string list) : string list = 
    match lst with 
    | [] -> []
    | x::xs -> if String.length x != k then x::filter xs else filter xs
  in filter lengths |> String.concat " "


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
