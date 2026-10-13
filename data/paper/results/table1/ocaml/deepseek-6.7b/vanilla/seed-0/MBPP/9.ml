let rec find_Rotations (str : string) : int =
    let n = String.length str in
    let str = str ^ str in
    let temp = String.sub str 0 n in
    let min_index = ref n in

    for i = 1 to n do
        if String.sub str i n < temp then (
            temp <- String.sub str i n;
            min_index := i
        )
    done;

    !min_index


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
