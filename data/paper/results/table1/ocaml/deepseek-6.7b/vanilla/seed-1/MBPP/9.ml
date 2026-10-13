let rec find_Rotations (str : string) : int =
    let double_str = str ^ str in
    let length = String.length str in
    let next_greater_pow_2 =
        1 lsl (String.length str)
        |> String.length in
    let next_double_len = pown 2 next_greater_pow_2 in
    let rec loop i len =
        if i < (len / 2) && str.[i] = str.[len-i-1] then loop (i+1) len
        else if i < (len / 2) then loop (i+1) len
        else len in
    let bad_char = Array.make next_double_len -1 in
    String.iteri (fun j x -> bad_char.(j) <- loop j (String.length str)) double_str;
    let s = ref 0 in
    let good_suffix = Array.make next_double_len -1 in
    let rec make_suffix k len =
        if len < length && good_suffix.(len) <> -1 then good_suffix.(k) <- len
        else if len > 0 then make_suffix k (len-1)
        else good_suffix.(k) <- -1
    in loop 0 length;
    let rec match_pattern j len =
        if j < length then let k = len - j - 1 in
        if s.[k] <> s.[j] then
            let new_len = 0 in
            s <- s + len lsl 1;
            if bad_char.(j + 1 + new_len) <= new_len then
                match_pattern (j + 1) (bad_char.(j + 1 + len lsl 1))
            else
                match_pattern (j + 1) new_len
        else
            let new_len = good_suffix.(len + j + 1) in
            if s.(k-len) < s.(len) then match_pattern (j - len + 1) new_len
            else
                match_pattern (j + new_len) new_len
    in match_pattern 0 (length - 1);
    let num_rotations = 
        let power_of_2 =
        let rec loop acc pow_2 =
            if pow_2 <= length then
                loop (acc + 1) (pow_2 lsl 1)
            else acc in
        loop 0 1 in
        loop 0 length in
    num_rotations


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
