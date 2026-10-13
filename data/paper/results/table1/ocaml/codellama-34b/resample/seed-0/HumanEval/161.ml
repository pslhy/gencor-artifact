(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     if s[i] is a letter, reverse its case from lower to upper or vise versa, *)
(*     otherwise keep it as it is. *)
(*     If the string contains no letters, reverse the string. *)
(*     The function should return the resulted string. *)
(*     Examples *)
(*     >>> solve "1234" *)
(*     "4321" *)
(*     >>> solve "ab" *)
(*     "AB" *)
(*     >>> solve "#a@C" *)
(*     "#A@c" *)
let rec solve (s : string) : string =
    if s = "" then ""
    else if s.[0] = 'a' || s.[0] = 'A' then
        if s.[0] = 'a' then s.[0] <- 'A'
        else s.[0] <- 'a'
        solve (s.substring(1))
    else
        s.[0] + (solve (s.substring(1)))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:29: Syntax error: strings are immutable, there is no assignment syntax for them. *)
(*     Hint: Mutable sequences of bytes are available in the Bytes module. *)
(*     Hint: Did you mean to use "Bytes.set"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
    let mutable_bytes = Bytes.of_string s in
    for i = 0 to String.length s - 1 do
        let c = s.[i] in
        if c = 'a' || c = 'A' then
            Bytes.set mutable_bytes i (if c = 'a' then 'A' else 'a')
    done;
    Bytes.to_string mutable_bytes

