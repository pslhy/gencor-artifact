let rec max_run_uppercase (test_str : string) : int = 
    (* Declare and initialize local variables *)
    let curr_run = ref 0 in
    let max_run = ref 0 in
    let i = ref 0 in

    (* Loop through all characters in the input string *)
    while !i < String.length(test_str) do
        if Char.is_uppercase test_str.[!i] then
            (* If the current character is uppercase, increment the current run length *)
            curr_run := !curr_run + 1;
            if !curr_run > !max_run then
                (* If the current run length is greater than the maximum run length so far, update the maximum run length *)
                max_run := !curr_run;

        (* Otherwise, reset the current run length to 1 *)
        curr_run := 1;

        (* Move on to the next character in the string *)
        i := !i + 1
    done;

    (* Return the maximum run length *)
    !max_run


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
