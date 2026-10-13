
let rec max_run_uppercase (test_str : string) : int = 
    (* Declare and initialize local variables *)
    let curr_run = ref 0 in
    let max_run = ref 0 in
    let i = ref 0 in

    (* Loop through all characters in the input string *)
    while !i < String.length(test_str) do
        if Char.uppercase_ascii(String.get(test_str, !i)) = String.get(test_str, !i) then
            (* Character is uppercase, increment current run *)
            curr_run := !curr_run + 1;
        if !curr_run > !max_run then
            (* Current run is greater than max run, update max run *)
            max_run := !curr_run
        else
            (* Reset current run to 0 *)
            curr_run := 0;
        i := !i + 1;
    done;

    (* Return max run *)
    !max_run

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
