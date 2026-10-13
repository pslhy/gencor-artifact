
let rec max_run_uppercase (test_str : string) : int = 
    (* base case: if the string is empty or there are no uppercase characters, return 0 *)
    if String.length test_str = 0 || not (List.exists (fun x -> Char.equal x 'A') test_str) then 0
    else 
        (* recursion step: find the maximum run of uppercase characters starting at the beginning of the string *)
        let result = ref 0 in
        for i = 0 to String.length test_str - 1 do
            if Char.equal (String.get test_str i) (String.get test_str i) then
                result := !result + 1
            else
                result := max !result 0
        done;
        !result

let input_str = "abcABCBCAbc";
Printf.printf "%d\n" (max_run_uppercase input_binary_int)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
