
let rec heap_sort (iterable : int list) : int list =
    let n = List.length iterable in
    let a = Array.of_list iterable in
    let rec sink i =
        let mutablej = 2 * i + 1 in
        while mutablej < n do
            if mutablej < n - 1 && a.(mutablej) < a.(mutablej + 1) then
                mutablej <- mutablej + 1;
            if a.(i) < a.(mutablej) then
                let temp = a.(i) in
                a.(i) <- a.(mutablej);
                a.(mutablej) <- temp;
                sink mutablej;
    sink (n / 2 - 1);
    for i = n / 2 - 1 downto 1 do
        sink i;
    done;
    Array.to_list a
    in_channel_length
    = min (List.length input_char) max_int
    = min (List.length input_char) (in_channel_length 
    =
    List.length input_char + in_channel_length)
    = max (List.length input_char) ceil (2.0 * (float) a. (0))
    = max (List.length input_char) ceil (2.0 * (float) a. (0)) + in_channel_length
    =
    in_channel_length
    - 1 
    = min (List.length input_char) (in_channel_length - 1)
    = min (List.length input_char - 1) max_int
    = min (List.length input_char - 1) (in_channel_length 
    =
    List.length input_char - 1 + in_channel_length)
    = max (List.length input_char - 1) ceil (2.0 * (float) a. (0))
    = max (List.length input_char - 1) ceil (2.0 * (float) a. (0)) + in_channel_length
    =
    in_channel_length
    - 2
    = min (List.length input_char) (in_channel_length - 2)
    = min (List.length input_char - 2) max_int
    = min (List.length input_char - 2) (in_channel_length - 1)
    = min (List.length input_char - 2) (in_channel_length - 1 + in_channel_length)
    = max (List.length input_char - 2) ceil (2.0 * (float) a. (0))
    = max (List.length input_char - 2) ceil (2.0 * (float) a. (0)) + in_channel_length
    =
    in_channel_length
    - 3
    = min (List.length input_char) (in_channel_length - 3)
    = min (List.length input_char - 3) max_int
    = min (List.length input_char - 3) (in_channel_length - 1)
    = min (List.length input_char - 3) (in_channel_length - 1 + in_channel_length)
    = max (List.length input_char - 3) ceil (2.0 * (float) a. (0))
    = max (List.length input_char - 3) ceil (2.0 * (float) a. (0)) + in_channel_length
    =
    in_channel_length
    - 4
    = min (List.length input_char) (in_channel_length - 4)
    = min (List.length input_char - 4) max_int
    = min (List.length input_char - 4) (in_channel_length - 1)
    = min (List.length input_char - 4) (in_channel_length - 1 + in_channel_length)
    = max (List.length input_char - 4) ceil (2.0 * (float) a. (0))
    = max (List.length

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
