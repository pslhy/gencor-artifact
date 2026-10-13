
let rec max_length (list1 : int list list) :  int * int list =
    match list1 with
        | [] -> failwith "empty list provided"
        | h :: t ->
            let len = List.length h in
            let max_len, max_list = max_length t in
            if len > max_len then
                len, h
            else
                max_len, max_list in

let list_of_lists = [[1; 2; 3]; [4; 5; 6; 7]; [8; 9]];
let result = max_length ([] : int list list);
print_endline (string_of_int (snd (fst (snd (fst (snd (fst (snd (snd (fst (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (snd (fst (s

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
