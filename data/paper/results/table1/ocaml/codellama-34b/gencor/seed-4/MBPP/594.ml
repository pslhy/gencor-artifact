
let rec diff_even_odd (list1 : int list) : int = 
    (* Declare a variable to hold the difference between the first even and first odd numbers *)
    let difference = 0 in
    (* Iterate through the list until you find the first even and first odd numbers *)
    list1 |> List.iter (fun num -> 
        (* Check if the current number is even and the difference variable is not assigned *)
        if(num mod 2 = 0) && (difference = 0) {
            let even = num in
            difference := 0 - num
        (* Check if the current number is odd and the difference variable is not assigned *)
        (* Add the current number to the running sum of the odd numbers *)
        (* If the current number is odd and the running sum is 0, set the running sum to the current number *)
        (* Else, add the current number to the running sum *)
        |> List.fold_left (fun acc num' -> if num' mod 2 = 1 && difference = 0 then acc else 
        (* If the running sum is at least as large as the current number, set the difference to the running sum *)
        if difference >= num' then difference := num' - acc else (); num' - acc ) 0
            (list1 |> List.map (fun num -> 0 - num))
    |> List.filter (fun x -> x mod 2 = 1)
    |> List.fold_left (fun acc num -> acc + num) 0

    in_channel_length
    |> List.fold_left (fun acc num -> acc + num) 0
    |> ignore

    diff_even_odd [2; 4; 6; 7; 8; 10] = -2
diff_even_odd [26; 28; 58; 100; 200; 100; 50; 20; 40] = -28
diff_even_odd [1; 2; 4; 6; 8] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24] = -4
diff_even_odd [1; 2; 4; 6; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20; 21; 22; 23; 24; 25] = -4
diff_

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
