let rec text_starta_endb (text : string) : bool = 
    (* base case: if the string is empty, there is no match *)
    if text = "" then false 
    (* check if the string starts with 'a' followed by anything *)
    else if String.equal (String.sub text 0 1) "a" then 
        (* recursion step: check if the substring starting from the first 
          character after 'a' ends in 'b' *)
        text_starta_endb (String.sub text 1 (String.length text - 1))
    else 
        false

(* Recursively calls itself until it finds an 'a' followed by anything
  ending in 'b' and then checks if the substring starting from the
  first character after 'a' ends in 'b' *)


let matches_a_followed_by_endb (text : string) : bool =
    text_starta_endb text

let test_cases =
    [
        ("ab", true);
        ("abc", true);
        ("abab", true);
        ("a", false);
        ("ababcd", true);
        ("abcab", false);
        ("abcd", false);
    ]

let results = List.map test_cases ~f:(fun (text, expected) -> (text,text_starta_endb text = expected))

let print_results () =
    let print_result (text, result) = (Printf.sprintf "input: %s, result: %s" text (if result then "true" else "false")) in
    List.iter results ~f:(fun res -> print_endline(print_result res))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
