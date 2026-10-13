
let rec shell_sort (my_list : int list) : int list =
    let rec aux (list : int list) (gap : int) : int list =
        match list with
        | [] -> []
        | x :: xs ->
            let temp = (aux (List.tl list) gap) @ (List.hd list :: []) in
            let swapped = ref false in
            let rec loop (list : int list) (i : int) =
                match list with
                | [] -> ()
                | x :: xs ->
                    if i < (List.length list - 1) && list.(i) > list.(i + 1) then (
                        let temp = list.(i) in
                        list.(i) <- list.(i + 1);
                        list.(i + 1) <- temp;
                        swapped := true;
                    );
                    loop (List.tl list) (i + 1)
            in
            if !swapped then loop temp 0;
            aux (List.tl list) (gap - 1) @ temp
    in
    aux (my_list) 5

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
