let rec is_nested (string : string) : bool =
    let len = String.length string in
    if len = 0 || len = 1 then
        false
    else
        is_nested_helper string 0 0 len

and is_nested_helper (string : string) (index : int) (count : int) (len : int) : bool =
    if count = 0 then
        true
    else if index >= len then
        false
    else if string.[index] = ']' then
        is_nested_helper string (index + 1) (count - 1) len
    else if string.[index] = '[' then
        is_nested_helper string (index + 1) (count + 1) len
    else
        is_nested_helper string (index + 1) count len

let () =
    let test_cases : (string * bool) list =
        [
            ("[[]]", true);
            ("[]]]]]]]]]]][[[[[[[]", false);
            ("[][]", false);
            ("[]", false);
            ("[[][]]", true);
            ("[[]][[", true);
        ]
    in
    List.iter (fun (test_case, expected_result) ->
        let result = is_nested test_case in
        if result <> expected_result then
            Printf.printf "Test case failed: %s --> expected: %b, actual: %b\n" test_case expected_result result
        else
            Printf.printf "Test case passed: %s --> %b\n" test_case result
    ) test_cases


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that takes a string as input which contains only square brackets. *)
(*     The function should return true if and only if there is a valid subsequence of brackets *)
(*     where at least one bracket in the subsequence is nested. *)
(*     >>> is_nested "[[]]" *)
(*     true *)
(*     >>> is_nested "[]]]]]]][[[[[]" *)
(*     false *)
(*     >>> is_nested "[][]" *)
(*     false *)
(*     >>> is_nested "[]" *)
(*     false *)
(*     >>> is_nested "[[][]]" *)
(*     true *)
(*     >>> is_nested "[[]][[" *)
(*     true *)
