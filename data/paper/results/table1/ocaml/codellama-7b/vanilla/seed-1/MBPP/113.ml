let rec check_integer (text : string) : bool =
    let is_integer =
        match text with
        | "" -> false
        | "+" | "-" -> false
        | _ -> Int.of_string text = Some(Int.of_string text)
    in
    if is_integer then
        true
    else
        check_integer (String.sub text 1 (String.length text - 1))

let () =
    assert (check_integer "123" == true);
    assert (check_integer "123abc" == false);
    assert (check_integer "abc123" == false);


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
