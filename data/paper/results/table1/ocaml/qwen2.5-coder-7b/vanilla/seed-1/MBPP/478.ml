let rec remove_lowercase (str1 : string) : string = 
  let rec check (str2 : string) : bool = 
    let rec iter (i : int) : bool = 
      if i >= String.length str2 then 
        true
      else if Char.lowercase_ascii (str2.[i]) then 
        false
      else 
        iter (i + 1)
    in
    iter 0
  in
  let rec filter (lst : char list) : char list = 
    match lst with 
    | [] -> []
    | h :: t -> 
      if check (String.make 1 h) then 
        h :: filter t
      else 
        filter t
  in
  let filtered_chars = filter (String.to_list str1) in
  String.of_list filtered_chars


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
