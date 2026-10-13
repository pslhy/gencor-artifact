
let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> ""
  | x :: xs -> 
        let rec count_parenthesis (str : string) : int list =
          match str with
          | "" -> []
          | _  -> if str.[0] = '(' || str.[0] = ')' then (1 - 2 * (if str.[0] = '(' then 1 else 0)) :: count_parenthesis (String.sub str 1 ((String.length str) - 1)) else 0 :: count_parenthesis (String.sub str 1 ((String.length str) - 1))
        in
        let cur_count = count_parenthesis x in
        let cur_len = String.length x in
        let num_parenthesis = List.fold_left (+) 0 cur_count in
        let new_len = cur_len - num_parenthesis in
        let rec remove_parenthesis_util (str : string) (len : int) (num : int) : string =
          match len, num with
          | 0, _ -> ""
          | _, 0 -> str
          | _, _ -> let next_char = if str.[0] = '(' || str.[0] = ')' then String.sub str 1 ((String.length str) - 1) else String.sub str 0 ((String.length str) - 1) in
                    remove_parenthesis_util next_char (len - 1) (num - 1)
        in
        remove_parenthesis_util x new_len num_parenthesis ^ " " ^ remove_parenthesis xs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
