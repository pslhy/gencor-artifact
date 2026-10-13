
let rec reverse_delete (s : string) (c : string) :  string * bool =
  let s_lst = List.of_seq (String.to_seq s) in
  let c_lst = List.of_seq (String.to_seq c) in
  let rec helper rem_lst acc =
    match rem_lst with
    | [] -> acc
    | hd::tl -> if List.mem hd c_lst then helper tl acc
                 else helper tl (acc ^ String.make 1 hd)
  in
  let result_str = helper s_lst "" in
  (result_str, result_str = String.of_seq (List.to_seq (List.rev (List.of_seq (String.to_seq result_str)))))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Task *)
(*     We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c *)
(*     then check if the result string is palindrome. *)
(*     A string is called palindrome if it reads the same backward as forward. *)
(*     You should return a tuple containing the result string and true/false for the check. *)
(*     Example *)
(*     >>> reverse_delete "abcde" "ae" *)
(*     ("bcd", false) *)
(*     >>> reverse_delete "abcdef" "b" *)
(*     ("acdef", false) *)
(*     >>> reverse_delete "abcdedcba" "ab" *)
(*     ("cdedc", true) *)
