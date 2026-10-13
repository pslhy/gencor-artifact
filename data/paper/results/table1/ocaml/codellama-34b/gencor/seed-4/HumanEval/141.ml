
let rec file_name_check (file_name : string) : string = 
    let should_not_contain_digits = 
    (String.fold_left (fun acc x -> match x with 
        | '0' .. '9' -> acc + 1
        | _ -> acc) 0);

    let is_valid_extension (ext : string) : bool = 
        List.mem ext ["txt", "exe", "dll"]

    in
    let rec contains_exactly_one_dot (file_name : string) : bool = 
        if (file_name.('.')) then 0 else 1 
      in

    let rec starts_with_letter (file_name : string) : bool = 
        match (file_name.('a'|>'A')) with 
        | None -> false 
        | Some c -> 
            List.mem valid_float_lexem not="#".(not is_valid_extension)

    in
    if (not (file_name.('.')) || contains_exactly_one_dot file_name) &&
       (starts_with_letter file_name || not (is_valid_extension file_name.('.') - 1))
    then "Yes"
    else "No"

(* tests *)

(* Test 1: File name with 1 dot and a valid extension. *)
(* Test 2: File name with 3 digits. *)
(* Test 3: File name with no dots. *)
(* Test 4: File name with 3 dots. *)
(* Test 5: File name with dot and no extension. *)
(* Test 6: File name with extension that is not valid. *)
(* Test 7: File name with no alphanumeric characters. *)
(* Test 8: File name with only digits. *)
(* Test 9: File name with only dots and underscores. *)
(* Test 10: File name with no dots or underscores. *)

(* Test 11: File name with integer after dot. *)
(* Test 12: File name with floating point after dot. *)
(* Test 13: File name with scientific notation after dot. *)
(* Test 14: File name with special characters after dot. *)
(* Test 15: File name with whitespace after dot. *)

(* Test 16: File name with multidigit after dot. *)
(* Test 17: File name with multiple periods with varying extensions. *)
(* Test 18: File name with multiple periods with same extension. *)
(* Test 19: File name with multiple periods with no extension. *)
(* Test 20: File name with non-alphanumeric characters before dot. * /)

let%test_module =
  (module struct
    (* Test 1: File name with 1 dot and a valid extension. *)
    let test_file_name_check1 () =
        let file_name = "example.txt" in
        let expected = "Yes" in
        let actual = file_name_check file_name in
        Alcotest.(check string) "Test 1" expected actual

    (* Test 2: File name with 3 digits. *)
    let test_file_name_check2 () =
        let file_name = "123example.txt" in
        let expected = "No" in
        let actual = file_name_check file_name in
        Alcotest.(check string) "Test 2" expected actual

    (* Test 3: File name with no dots. *)
    let test_file_name_check3 () =
        let file_name = "example" in
        let expected = "No" in
        let actual = file_name_check file_name in
        Alcotest.(check string) "Test 3" expected actual

    (* Test 4: File name with 3 dots. *)
    let test_file_name_check4 () =
        let file_name = "example.t.xt" in
        let expected = "No" in
        let actual = file_name_check file_name in
        Alcotest.(check string) "Test 4" expected actual

    (* Test 5: File name with dot and no extension. *)
    let test_file_name_check5 () =
        let file_name = "example." in
        let expected = "No" in
        let actual = file_name_check file_name in
        Alcotest.(check string) "Test 5" expected actual

    (* Test 6: File name with extension that is not valid. *)
    let test_file_name_check6 () =
        let file_name = "example.junk" in
        let expected = "No" in
        let actual = file_name_check file_name in
        Alcotest.(check string) "Test 6" expected actual

    (* Test 7: File name with no alphanumeric characters. *)
    let test_file_name_check7 () =
        let file_name = ". . ." in
        let expected = "No" in
        let actual = file_name_check file_name in
        Alcotest.(check string) "Test 7" expected actual

    (* Test 8: File name with only digits. *)
    let test_file_name_check8 () =
        let file_name = "123456789.jpg" in
        let expected = "No" in
        let actual = file_name_check file_name in
        Alcotest.(check string) "Test 8" expected actual

    (* Test 9: File name with only dots and underscores. *)
    let test_file_name_check9 () =
        let file_name = "_____" in
        let expected = "No" in
        let actual = file_name_check file_name in
        Alcotest.(check string) "Test 9" expected actual

    (* Test 10: File name with no dots or underscores. *)
    let test_file_name_check10 () =
        let file_name = "example" in
        let expected = "

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function which takes a string representing a file's name, and returns *)
(*     'Yes' if the the file's name is valid, and returns 'No' otherwise. *)
(*     A file's name is considered to be valid if and only if all the following conditions *)
(*     are met: *)
(*     - There should not be more than three digits ('0'-'9') in the file's name. *)
(*     - The file's name contains exactly one dot '.' *)
(*     - The substring before the dot should not be empty, and it starts with a letter from *)
(*     the latin alphapet ('a'-'z' and 'A'-'Z'). *)
(*     - The substring after the dot should be one of these: ['txt', 'exe', 'dll'] *)
(*     Examples: *)
(*     >>> file_name_check "example.txt" *)
(*     "Yes" *)
(*     >>> file_name_check "1example.dll" *)
(*     "No" *)
