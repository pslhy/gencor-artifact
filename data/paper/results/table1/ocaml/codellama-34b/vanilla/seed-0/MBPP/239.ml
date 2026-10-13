let rec get_total_number_of_sequences (m : int) (n : int) : int =
    if m <= 2 then 1
    else if n = 1 then 1
    else
        let min_prev_element = m / 2
        let max_prev_element = m - 1
        let prev_element_range = (min_prev_element, max_prev_element)
        let rec loop (current_element : int) (acc : int) : int =
            if current_element <= min_prev_element then acc
            else
                let prev_element = (current_element / 2)
                let new_acc = acc + (get_total_number_of_sequences prev_element (n - 1))
                loop (prev_element - 1) new_acc
        loop min_prev_element 0

let solve_dnf (m : int) (n : int) : int =
    let total_number_of_sequences = get_total_number_of_sequences m n
    if total_number_of_sequences < 0 then 0
    else total_number_of_sequences


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
