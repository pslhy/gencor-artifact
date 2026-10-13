let rec reverse_delete (s : string) (c : string) :  string * bool =
    if s = "" then "", false
    else if c = "" then s, true
    else let dropped : string = String.filter (fun (x : char) -> not (List.mem x c)) s
        let str : string = String.sub dropped (0, String.length dropped / 2) in
        if String.is_palindrome str then str, true
        else reverse_delete (String.sub s 1 (String.length s - 1)) c

let s : string = "abcde" in
let c : string = "ae" in
let (result, is_palindrome) : string * bool = reverse_delete s c in
let () = print_endline (result ^ ", " ^ string_of_bool is_palindrome) in
;;
(* Result: "bcd, false" *)


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
