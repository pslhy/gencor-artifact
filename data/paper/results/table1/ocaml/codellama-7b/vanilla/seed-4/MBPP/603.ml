let rec get_ludic (n : int) : int list = 
    let ludic_numbers = ref [] in 
    let rec helper (i : int) = 
        if i <= n then 
            let divisors = ref [] in 
            for j = 1 to i do 
                if i mod j = 0 then 
                    divisors := j :: !divisors; 
            done; 
            if List.length !divisors = 1 then 
                ludic_numbers := i :: !ludic_numbers; 
            helper (i + 1) 
        else 
            !ludic_numbers 
    in 
    helper 2; 
    !ludic_numbers 

let main (n : int) : unit = 
    let ludic_numbers = get_ludic n in 
    let print_lucid (l : int) : unit = 
        Printf.printf "%d " l 
    in 
    List.iter print_lucid ludic_numbers 

let () =
    main 100 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
