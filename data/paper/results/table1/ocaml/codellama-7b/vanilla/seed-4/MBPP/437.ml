let rec remove_odd (str1 : string) : string = 
    match String.length str1 with
    | 0 -> ""
    | 1 -> str1
    | _ -> String.sub str1 0 (String.length str1 / 2)

let () = 
    let rec print_all (str : string list) : unit = 
        match str with
        | [] -> ()
        | str :: strs -> print_string str; print_string "\n"; print_all strs
    in
    let input_strs = ["Hello", "OddChar", "Removed"] in
    List.iter
        (fun (str, expected) -> 
            let output_str = remove_odd str in
            Printf.printf "Input string: '%s', expected: '%s', actual: '%s'\n" str expected output_str;
            let passes_test = output_str = expected in
            if passes_test then 
                print_string "[PASSED]\n\n"
            else 
                print_string "[FAILED]\n\n")
        (List.combine input_strs ["", "Helo", "OddCra", "Remov"]);
    print_string "All done!\n";


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
