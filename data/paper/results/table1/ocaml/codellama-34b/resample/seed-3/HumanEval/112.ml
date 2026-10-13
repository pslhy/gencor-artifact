(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec reverse_delete (s : string) (c : string) :  string * bool =
    if s = "" then ("", false)
    else if List.mem (s.[0]) c then reverse_delete (String.sub s 1 (String.length s - 1)) c
    else (String.make 1 s.[0]) ^ (fst (reverse_delete (String.sub s 1 (String.length s - 1)) c)), 
           List.for_all (function c -> c = s.[0]) (String.explode (snd (reverse_delete (String.sub s 1 (String.length s - 1)) c)))

let main (): unit =
    let test1 = "abcde" in
    let test2 = "ae" in
    let test3 = "abcdef" in
    let test4 = "b" in
    let test5 = "abcdedcba" in
    let test6 = "ab" in
    let test_cases = [
        (test1, test2, ("bcd", false));
        (test3, test4, ("acdef", false));
        (test5, test6, ("cdedc", true));
    ] in
    List.iter (fun (s, c, expected) ->
        let result = reverse_delete s c in
        if result = expected then print_endline "Pass"
        else print_endline ("Failed: " ^ s ^ " " ^ c ^ " Expected: " ^ (fst expected) ^ (if snd expected then "true" else "false") ^ " but got: " ^ (fst result) ^ (if snd result then "true" else "false"))
    ) test_cases
    
let _ = main ()

