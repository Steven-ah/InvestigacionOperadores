%% Find an Augmenting Path
    function F = findPath(A)            % BFS (Breadth-first Search)
    len=evalin('caller','len');
    s=evalin('caller','s');
    t=evalin('caller','t');
        q = zeros(1,len);               % queue
        pred = zeros(1,len);            % predecessor array
        front = 1; back = 2;
        pred(s) = s; q(front) = s;
        while front ~= back
            v = q(front);
            front = front + 1;
            for i = 1:len
                if pred(i) == 0 && A(v,i) > 0
                    q(back) = i;
                    back = back + 1;
                    pred(i) = v;
                end
            end
        end
        path = zeros(1,len);
        if pred(t) ~= 0
            i = t; c = 1;
            while pred(i) ~= i
                path(c) = i;
                c = c + 1;
                i = pred(i);
            end
            path(c) = s;
            path(c+1:len) = [];
        end
        F = path;
    end